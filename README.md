SERVER-BASE COOKBOOK
====================

This wrapper cookbook installs packages required on Linux servers.

## Supported Platforms

Supported platforms: Ubuntu 12.04 and 14.04.

## Usage

### server-base::default

Include `server-base` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[server-base::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Sean M. Sullivan - Pulselocker, Inc. (<sean@pulselocker.com>)
