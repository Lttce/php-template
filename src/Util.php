<?php
declare(strict_types=1);

class Util
{
    static function h(string $s): string
    {
        return htmlspecialchars($s, ENT_QUOTES);
    }
}
