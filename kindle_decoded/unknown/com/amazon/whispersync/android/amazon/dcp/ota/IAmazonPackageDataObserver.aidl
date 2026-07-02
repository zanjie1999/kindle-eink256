// Copyright 2011 Amazon.com. All rights reserved. 

package com.android.amazon.dcp.ota;

oneway interface IAmazonPackageDataObserver {
    void onRemoveCompleted(in String packageName, boolean succeeded);
}