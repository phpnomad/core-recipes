<?php

namespace {{namespace}};

use PHPNomad\Events\Interfaces\Event;

class {{name}}RegistryInitiatedEvent implements Event
{
    protected {{name}}Registry $registry;

    public function __construct({{name}}Registry $registry)
    {
        $this->registry = $registry;
    }

    public static function getId(): string
    {
        return '{{eventId}}';
    }

    /**
     * Register an item. Third parties can only interact with the registry
     * through the methods this event exposes.
     *
     * @param string $key
     * @param callable():object $factory Invoked lazily when the item is first accessed.
     */
    public function set(string $key, callable $factory): void
    {
        $this->registry->set($key, $factory);
    }
}
