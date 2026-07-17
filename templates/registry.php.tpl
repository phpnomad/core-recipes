<?php

namespace {{namespace}};

use PHPNomad\Registry\Interfaces\CanGet;
use PHPNomad\Registry\Interfaces\CanSet;
use PHPNomad\Registry\Traits\WithGet;
use PHPNomad\Registry\Traits\WithSet;

class {{name}}Registry implements CanGet, CanSet
{
    use WithGet;
    use WithSet;
}
