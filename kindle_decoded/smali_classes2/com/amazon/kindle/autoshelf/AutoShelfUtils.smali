.class public Lcom/amazon/kindle/autoshelf/AutoShelfUtils;
.super Ljava/lang/Object;
.source "AutoShelfUtils.java"


# static fields
.field private static isAutoShelfFeatureEnabled:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isIsAutoShelfFeatureEnabled()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/amazon/kindle/autoshelf/AutoShelfUtils;->isAutoShelfFeatureEnabled:Z

    return v0
.end method
