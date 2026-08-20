#!/usr/bin/env python3

import asyncio

from deb import Deb
from stages import PrepareStage, ConfigStage


async def main():
    deb = await Deb.create({})

    await PrepareStage(deb).run()
    await ConfigStage(deb).run()


asyncio.run(main())