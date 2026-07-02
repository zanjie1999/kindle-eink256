.class public final Lcom/amazon/device/sync/gear/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BOOTSTRAP:Lcom/amazon/whispersync/Reason;

.field public static final CLIENT_INITIATED:Lcom/amazon/whispersync/Reason;

.field public static final STUB_REASON:Lcom/amazon/whispersync/Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/device/sync/gear/Constants$1;

    invoke-direct {v0}, Lcom/amazon/device/sync/gear/Constants$1;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/gear/Constants;->BOOTSTRAP:Lcom/amazon/whispersync/Reason;

    .line 14
    new-instance v0, Lcom/amazon/device/sync/gear/Constants$2;

    invoke-direct {v0}, Lcom/amazon/device/sync/gear/Constants$2;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/gear/Constants;->CLIENT_INITIATED:Lcom/amazon/whispersync/Reason;

    .line 17
    new-instance v0, Lcom/amazon/whispersync/Reason;

    invoke-direct {v0}, Lcom/amazon/whispersync/Reason;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/gear/Constants;->STUB_REASON:Lcom/amazon/whispersync/Reason;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
