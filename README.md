# chef-crontab-cookbook

 Chef cookbook to configure crontab from node['crontab'] definitions...

## Supported Platforms

 Unix

## Attributes

 none

## Usage

Vagrant examples:

    ...
    chef.json = {
      "crontab" => {
        "reboot" => {
          "minute" => "0",
          "hour" => "0",
          "weekday" => "1",
          "command" => "reboot"
        }
      }
    }

    chef.run_list = [
        "recipe[chef-crontab::create]"
    ]
    ...

or:

    ...
    chef.json = {
      "crontab" => {
        "create" => {
          "newReboot" => {
            "minute" => "1",
            "hour" => "0",
            "weekday" => "1",
            "command" => "reboot"
          }
        },
        "delete" => {
          "reboot" => nil
        }
      }
    }

    chef.run_list = [
        "recipe[chef-crontab::action]"
    ]
    ...

### chef-crontab::default

Include `chef-crontab` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-crontab::action/create/delete]"
  ]
}
```

## License and Authors

Author:: PE, pf. (<peychart@mail.pf>)
