<?php

namespace {{namespace}};

class {{name}}Pipeline
{
    /** @var {{name}}Processor[] */
    protected array $processors;

    public function __construct({{name}}Processor ...$processors)
    {
        $this->processors = $processors;
    }

    /**
     * Run the payload through each processor in order. Processors run
     * independently and communicate only through the payload; a processor can
     * halt the chain via $payload->stop().
     */
    public function process({{name}}Payload $payload): {{name}}Payload
    {
        foreach ($this->processors as $processor) {
            if (!$payload->shouldContinue()) {
                break;
            }

            $processor->process($payload);
        }

        return $payload;
    }
}
