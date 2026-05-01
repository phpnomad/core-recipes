<?php

namespace {{namespace}};

use {{model}};
use PHPNomad\Datastore\Interfaces\DataModel;
use PHPNomad\Datastore\Interfaces\ModelAdapter;

class {{name}} implements ModelAdapter
{
    public function toModel(array $data): DataModel
    {
        return new {{modelShort}}(
            id: (int)($data['id'] ?? 0),
            // TODO: Map remaining fields
        );
    }

    public function toArray(DataModel $model): array
    {
        return [
            'id' => $model->getId(),
            // TODO: Map remaining fields
        ];
    }
}
