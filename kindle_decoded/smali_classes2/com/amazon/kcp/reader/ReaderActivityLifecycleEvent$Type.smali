.class public final enum Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;
.super Ljava/lang/Enum;
.source "ReaderActivityLifecycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

.field public static final enum CONFIG_CHANGE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

.field public static final enum CREATE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

.field public static final enum DESTROY:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

.field public static final enum PAUSE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

.field public static final enum RESTART:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

.field public static final enum RESUME:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

.field public static final enum START:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

.field public static final enum STOP:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 40
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/4 v1, 0x0

    const-string v2, "CREATE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->CREATE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/4 v2, 0x1

    const-string v3, "START"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->START:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/4 v3, 0x2

    const-string v4, "RESUME"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESUME:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/4 v4, 0x3

    const-string v5, "PAUSE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->PAUSE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/4 v5, 0x4

    const-string v6, "STOP"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->STOP:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/4 v6, 0x5

    const-string v7, "DESTROY"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->DESTROY:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/4 v7, 0x6

    const-string v8, "RESTART"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESTART:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/4 v8, 0x7

    const-string v9, "CONFIG_CHANGE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->CONFIG_CHANGE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    .line 39
    sget-object v10, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->CREATE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->START:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESUME:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->PAUSE:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->STOP:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->DESTROY:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->RESTART:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->$VALUES:[Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->$VALUES:[Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    return-object v0
.end method
