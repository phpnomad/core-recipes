<?php

namespace {{namespace}};

use {{model}};
use PHPNomad\Utils\Helpers\Arr;

class {{name}}
{
    /**
     * Create a {{modelShort}} from raw array data.
     *
     * TODO: Rename this method (or add siblings) to indicate the data source,
     * e.g. fromApiResponse(), fromDatabaseRow(). Use Arr::get() for safe access
     * and private helpers for repeated type conversions.
     */
    public function fromArray(array $data): {{modelShort}}
    {
        return new {{modelShort}}(
            // TODO: Map input fields, e.g. title: Arr::get($data, 'title')
        );
    }
}
