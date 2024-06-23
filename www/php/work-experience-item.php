<?php

function getWorkExperienceItemHtml(
    $dateStart,
    $dateFinish,
    $companyName,
    $companyLocation,
    $jobDescription
): string {
    $tplHtml = file_get_contents(__DIR__ . "/work-experience-item.tpl");

    $tplHtml = str_ireplace('{dateStart}', $dateStart, $tplHtml);
    $tplHtml = str_ireplace('{dateFinish}', $dateFinish, $tplHtml);
    $tplHtml = str_ireplace('{companyName}', $companyName, $tplHtml);
    $tplHtml = str_ireplace('{companyLocation}', $companyLocation, $tplHtml);
    $tplHtml = str_ireplace('{jobDescription}', $jobDescription, $tplHtml);

    return $tplHtml;
}