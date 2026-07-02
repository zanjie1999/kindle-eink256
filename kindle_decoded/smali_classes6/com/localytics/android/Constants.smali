.class final Lcom/localytics/android/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field static final CURRENT_API_LEVEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    sput v0, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    return-void
.end method
