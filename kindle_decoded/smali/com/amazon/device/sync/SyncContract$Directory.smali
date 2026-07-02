.class final Lcom/amazon/device/sync/SyncContract$Directory;
.super Ljava/lang/Object;
.source "SyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Directory"
.end annotation


# static fields
.field public static final DATASETS_UPDATE_URI:Ljava/lang/String; = "datasets_update_uri"

.field public static final DIRECTORY_SUBSCRIPTION_SUBSCRIBED:Ljava/lang/String; = "SUBSCRIBED"

.field public static final DIRECTORY_SUBSCRIPTION_URI:Ljava/lang/String; = "directory_subscription_uri"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_SUBSCRIBED_TO_DIRECTORY:Ljava/lang/String; = "is_subscribed_to_directory"

.field public static final TABLE_NAME:Ljava/lang/String; = "directory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
