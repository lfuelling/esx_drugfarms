# esx_drugfarms [![Latest Release](https://img.shields.io/github/v/release/lfuelling/esx_drugfarms)](https://github.com/lfuelling/esx_drugfarms/releases)

This plugin, which is originally based on [vrp_drugfarms by D3uxx](https://github.com/D3uxx/vrp_drugfarms), enables weed farms, the meth lab, coke lab, document forgery, biker club houses and bunkers from GTA: Online in esx.

- **If you fork this, you won't get updates.** 
    - **Consider Starring instead if you don't want to make a contribution.**

## Dependencies

- [bob74_ipl](https://github.com/Bob74/bob74_ipl)
- [es_extended](https://github.com/ESX-Org/es_extended)
- [esx_policejob](https://github.com/ESX-Org/esx_policejob/) (optional)

Note: not having `esx_policejob` running won't have any negative side effects. If you use another police plugin which has a jobId different than `police`, you can change the value in `config.lua`.

## Installation

1. Place this folder in `resources/[esx]`
2. Configure the plugin in `config.lua`
3. Add `start esx_drugfarms` to your `server.cfg`

## Usage

1. Go to marker
2. Press `e`/interact

### Customization

The configuration of the interiors is to be done in [bob74_ipl](https://github.com/Bob74/bob74_ipl).
Usually (last time I checked) there is a `LoadDefault` function at the end of each script in bob74_ipl. In this function, you can configure what is loaded by changing the arguments passed to the `Set` or `Enable` functions.
For more information see [this issue comment](https://github.com/lfuelling/esx_drugfarms/issues/6#issuecomment-623133383).


## Credit

As stated above this mod was originally created by [D3uxx](https://github.com/D3uxx/vrp_drugfarms). 
