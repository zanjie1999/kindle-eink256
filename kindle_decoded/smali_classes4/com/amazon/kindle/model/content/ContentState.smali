.class public final enum Lcom/amazon/kindle/model/content/ContentState;
.super Ljava/lang/Enum;
.source "ContentState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/content/ContentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum CONVERSION_FAILED:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum CONVERTING:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum FAILED:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum FAILED_DEFERRED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum LOCAL:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum LOCAL_DEFERRED_REMAINING:Lcom/amazon/kindle/model/content/ContentState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LOCAL_OPTIONAL_REMAINING:Lcom/amazon/kindle/model/content/ContentState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PAUSED:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum PAUSED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum QUEUED:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum REMOTE:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum REQUIRED_COMPLETE:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/model/content/ContentState;

.field public static final enum UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;


# instance fields
.field private final isFailure:Z

.field private final isLocal:Z

.field private final isOpenable:Z

.field private final isTerminal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v7, Lcom/amazon/kindle/model/content/ContentState;

    const-string v1, "REMOTE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v7, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    .line 20
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v9, "LOCAL"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    .line 24
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v2, "LOCAL_OPTIONAL_REMAINING"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL_OPTIONAL_REMAINING:Lcom/amazon/kindle/model/content/ContentState;

    .line 27
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v9, "LOCAL_DEFERRED_REMAINING"

    const/4 v10, 0x3

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->LOCAL_DEFERRED_REMAINING:Lcom/amazon/kindle/model/content/ContentState;

    .line 32
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v2, "REQUIRED_COMPLETE"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->REQUIRED_COMPLETE:Lcom/amazon/kindle/model/content/ContentState;

    .line 34
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v9, "CONVERTING"

    const/4 v10, 0x5

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->CONVERTING:Lcom/amazon/kindle/model/content/ContentState;

    .line 35
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v2, "CONVERSION_FAILED"

    const/4 v3, 0x6

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->CONVERSION_FAILED:Lcom/amazon/kindle/model/content/ContentState;

    .line 37
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v9, "DOWNLOADING_OPENABLE"

    const/4 v10, 0x7

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    .line 38
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v2, "DOWNLOADING"

    const/16 v3, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    .line 39
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v9, "QUEUED"

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    .line 41
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v2, "FAILED_DEFERRED_OPENABLE"

    const/16 v3, 0xa

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED_DEFERRED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    .line 44
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v9, "FAILED"

    const/16 v10, 0xb

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    .line 45
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v2, "FAILED_RETRYABLE"

    const/16 v3, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    .line 46
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v9, "FAILED_OPENABLE"

    const/16 v10, 0xd

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    .line 47
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v2, "PAUSED"

    const/16 v3, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    .line 48
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v9, "PAUSED_OPENABLE"

    const/16 v10, 0xf

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->PAUSED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    .line 49
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v2, "UNSUPPORTED"

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;

    .line 50
    new-instance v0, Lcom/amazon/kindle/model/content/ContentState;

    const-string v9, "UNKNOWN"

    const/16 v10, 0x11

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/model/content/ContentState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentState;->UNKNOWN:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/amazon/kindle/model/content/ContentState;

    .line 12
    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->LOCAL_OPTIONAL_REMAINING:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->LOCAL_DEFERRED_REMAINING:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->REQUIRED_COMPLETE:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->CONVERTING:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->CONVERSION_FAILED:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->FAILED_DEFERRED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->PAUSED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/model/content/ContentState;->$VALUES:[Lcom/amazon/kindle/model/content/ContentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput-boolean p3, p0, Lcom/amazon/kindle/model/content/ContentState;->isLocal:Z

    .line 139
    iput-boolean p4, p0, Lcom/amazon/kindle/model/content/ContentState;->isOpenable:Z

    .line 140
    iput-boolean p5, p0, Lcom/amazon/kindle/model/content/ContentState;->isTerminal:Z

    .line 141
    iput-boolean p6, p0, Lcom/amazon/kindle/model/content/ContentState;->isFailure:Z

    return-void
.end method

.method public static isDownloading(Lcom/amazon/kindle/model/content/ContentState;)Z
    .locals 1

    .line 98
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->REQUIRED_COMPLETE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isQueued(Lcom/amazon/kindle/model/content/ContentState;)Z
    .locals 1

    .line 111
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kindle/model/content/ContentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/content/ContentState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->$VALUES:[Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/content/ContentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method


# virtual methods
.method public isFailure()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/amazon/kindle/model/content/ContentState;->isFailure:Z

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/amazon/kindle/model/content/ContentState;->isLocal:Z

    return v0
.end method

.method public isOpenable()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/amazon/kindle/model/content/ContentState;->isOpenable:Z

    return v0
.end method

.method public isTerminal()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/amazon/kindle/model/content/ContentState;->isTerminal:Z

    return v0
.end method
