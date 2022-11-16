<?php
declare(strict_types=1);

use PHPUnit\Framework\TestCase;

class UtilTest extends TestCase
{
    function testSameResultAshtmlspecialchars(): void
    {
        $xss_string = "<script>window.print();</script>";
        $this->assertEquals(
            Util::h($xss_string),
            htmlspecialchars($xss_string, ENT_QUOTES)
        );
    }
}
