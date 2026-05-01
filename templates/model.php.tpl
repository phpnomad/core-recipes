<?php

namespace {{namespace}};

use PHPNomad\Datastore\Interfaces\DataModel;
use PHPNomad\Datastore\Interfaces\HasSingleIntIdentity;
use PHPNomad\Datastore\Traits\WithSingleIntIdentity;

class {{name}} implements DataModel, HasSingleIntIdentity
{
    use WithSingleIntIdentity;

    public function __construct(
        int $id,
        // TODO: Add model properties
    ) {
        $this->id = $id;
    }
}
