.class final Lcom/amazon/device/sync/SyncContract$Namespaces;
.super Ljava/lang/Object;
.source "SyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Namespaces"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final TABLE_NAME:Ljava/lang/String; = "namespaces"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
