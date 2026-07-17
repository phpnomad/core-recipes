<?php

namespace {{namespace}};

use PHPNomad\Events\Interfaces\CanHandle;
use PHPNomad\Events\Interfaces\Event;

class RegisterCore{{name}}Items implements CanHandle
{
    public function handle(Event $event): void
    {
        if (!$event instanceof {{name}}RegistryInitiatedEvent) {
            return;
        }

        // TODO: Register core items. Callbacks are invoked lazily on first access.
        // $event->set('example', fn () => new ExampleItem());
    }
}
