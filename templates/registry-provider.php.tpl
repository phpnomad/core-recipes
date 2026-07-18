<?php

namespace {{namespace}};

use PHPNomad\Events\Interfaces\EventStrategy;

class {{name}}Provider
{
    protected {{name}}Registry $registry;

    protected EventStrategy $eventStrategy;

    protected bool $registryInitiated = false;

    public function __construct({{name}}Registry $registry, EventStrategy $eventStrategy)
    {
        $this->registry = $registry;
        $this->eventStrategy = $eventStrategy;
    }

    /**
     * Get a registered item by key, initializing the registry on first access.
     *
     * TODO: Replace with purpose-specific, typed accessors as the item type stabilizes.
     */
    public function get(string $key): ?object
    {
        return $this->initRegistry()->registry->get($key);
    }

    protected function initRegistry(): static
    {
        if (!$this->registryInitiated) {
            $this->eventStrategy->broadcast(new {{name}}RegistryInitiatedEvent($this->registry));
            $this->registryInitiated = true;
        }

        return $this;
    }
}
