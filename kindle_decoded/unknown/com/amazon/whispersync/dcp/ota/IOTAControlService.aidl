// Copyright 2013 Amazon.com. All rights reserved.
package com.amazon.dcp.ota;

import com.amazon.dcp.ota.ISideloadCallback;
import com.amazon.dcp.ota.OTAInstallWaitReason;
import com.amazon.dcp.ota.Sideload;
import com.amazon.dcp.ota.UpdateManifest;
import com.amazon.dcp.ota.UpdateCheckReason;
import com.amazon.dcp.ota.UpdateType;

/** @hide */
interface IOTAControlService
{
    List<UpdateManifest> checkForUpdates(in UpdateCheckReason reason, in List<UpdateType> types);

    long getLastCheckTimeInMillis();

    List<UpdateManifest> getActiveUpdates(in List<UpdateType> types);

    long getNextCheckTimeInMillis();

    long getLastOSInstallationTime();

    long getLastInstallationTime(in String packageName);

    UpdateManifest processManifest(in UpdateManifest manifest);

    void downloadManifest(in UpdateManifest manifest);

    List<OTAInstallWaitReason> getReasonsNotToInstallUpdates(in UpdateManifest manifest);

    oneway void startInstallUpdates(in UpdateManifest manifest);
    
    boolean cancelUpdates(in UpdateManifest manifest);

    void registerSideloadCallback(ISideloadCallback callback);
    
    void unregisterSideloadCallback(ISideloadCallback callback);

    int ensureSideloadCanBeInstalled(in Sideload sideload);
    
    int installSideload(in Sideload sideload);

    void pauseWhenOnMeteredConnection(in UpdateManifest manifest);
}
