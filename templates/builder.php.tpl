<?php

namespace {{namespace}};

use {{model}};
use InvalidArgumentException;

class {{name}}
{
    // TODO: Add builder state properties — one per configurable part of {{modelShort}}.

    // TODO: Add fluent setter methods that store state and `return $this;`, e.g.:
    // public function subject(string $subject): self
    // {
    //     $this->subject = $subject;
    //
    //     return $this;
    // }

    public function build(): {{modelShort}}
    {
        $this->validate();

        return new {{modelShort}}(
            // TODO: Pass accumulated state to the product constructor
        );
    }

    protected function validate(): void
    {
        // TODO: Throw InvalidArgumentException when required state is missing.
    }
}
