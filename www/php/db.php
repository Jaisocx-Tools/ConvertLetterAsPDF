<?php
class Database {
    private $host = 'mysql:3306';
    private $dbName = 'cv';
    private $username = 'cv';
    private $password = 'asd';
    private $pdo = null;
    private $stmt = null;

    const MONTHS_NAMES = [
        'en' => [
            'January', 'February', 'March', 'April', 'May', 'June',
            'July', 'August', 'September', 'October', 'November', 'December'
        ],
        'de' => [
            'Januar', 'Februar', 'März', 'April', 'Mai', 'Juni',
            'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'
        ],
    ];

    // Get PDO connection
    public function getConnection() {
        try {
            $this->pdo = new PDO("mysql:host={$this->host};dbname={$this->dbName}", $this->username, $this->password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $this->pdo;
        } catch (PDOException $e) {
            echo "Connection error: " . $e->getMessage();
            return null;
        }
    }

    // Execute SQL query and get recordset
    public function getRecordset($sql, $params = []) {
        if ($this->pdo === null) {
            $this->getConnection();
        }

        try {
            $this->stmt = $this->pdo->prepare($sql);
            $this->stmt->execute($params);
            return $this->stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            echo "Query error: " . $e->getMessage();
            return null;
        }
    }

    protected function formatDate($lang, $month, $year): string {
        if (($month === null) && !$year) {
            return 'now';
        }

        return self::MONTHS_NAMES[$lang][$month-1] . ' ' . $year;
    }

    public function echoCVExperienceItem(
        $experienceArt,
        $pageNumber
    ) {
        $sql = "SELECT * FROM cv_items where experience_art=:experience_art and page_number=:page_number";
        $params = [
            ':experience_art' => $experienceArt,
            ':page_number' => $pageNumber,
        ];
        
        $result = $this->getRecordset($sql, $params);
        if (!$result) {
            throw new Exception("No records found");
        }

        foreach ($result as $row) {
            echo getWorkExperienceItemHtml(
                $this->formatDate('en', $row['month_start'], $row['year_start']),
                $this->formatDate('en', $row['month_finish'], $row['year_finish']),
                $row['company_name'],
                $row['company_location'],
                $row['job_description'],
            );
        }
    }

    // Close recordset and connection
    public function close() {
        if ($this->stmt !== null) {
            $this->stmt = null;
        }

        if ($this->pdo !== null) {
            $this->pdo = null;
        }
    }
}
