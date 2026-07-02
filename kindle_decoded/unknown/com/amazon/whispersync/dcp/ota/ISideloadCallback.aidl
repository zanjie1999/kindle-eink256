package com.amazon.dcp.ota;

import com.amazon.dcp.ota.Sideload;

/** @hide */
oneway interface ISideloadCallback
{
    void onSideloadFound(in Sideload sideload);

    void onSideloadLost();
}
