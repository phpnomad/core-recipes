<?php

namespace {{namespace}};

class {{name}}Payload
{
    /** @var array<string, mixed> */
    protected array $data = [];

    /** @var string[] */
    protected array $errors = [];

    protected bool $stopped = false;

    // TODO: Replace the generic data bag with typed properties and fluent,
    // purpose-named accessors as the pipeline's shape stabilizes.

    public function set(string $key, $value): static
    {
        $this->data[$key] = $value;

        return $this;
    }

    /**
     * @return mixed
     */
    public function get(string $key)
    {
        return $this->data[$key] ?? null;
    }

    /** @return array<string, mixed> */
    public function getAllData(): array
    {
        return $this->data;
    }

    public function addError(string $message): static
    {
        $this->errors[] = $message;

        return $this;
    }

    /** @return string[] */
    public function getErrors(): array
    {
        return $this->errors;
    }

    public function hasErrors(): bool
    {
        return !empty($this->errors);
    }

    public function stop(): static
    {
        $this->stopped = true;

        return $this;
    }

    public function shouldContinue(): bool
    {
        return !$this->stopped;
    }
}
