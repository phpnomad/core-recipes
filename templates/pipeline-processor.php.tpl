<?php

namespace {{namespace}};

interface {{name}}Processor
{
    /**
     * Examine, modify, or accumulate data on the payload. Report problems via
     * $payload->addError() and halt the remaining chain via $payload->stop().
     */
    public function process({{name}}Payload $payload): void;
}
