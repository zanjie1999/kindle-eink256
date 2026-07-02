.class public final enum Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;
.super Ljava/lang/Enum;
.source "IReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/IReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenReaderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

.field public static final enum BLOCKING:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

.field public static final enum BLOCK_CALLING_THREAD:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

.field public static final enum LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 153
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v1, 0x0

    const-string v2, "BLOCKING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    .line 159
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v2, 0x1

    const-string v3, "LOADING_ASYNC"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    .line 165
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v3, 0x2

    const-string v4, "BLOCK_CALLING_THREAD"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCK_CALLING_THREAD:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    .line 149
    sget-object v5, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->$VALUES:[Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;
    .locals 1

    .line 149
    const-class v0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;
    .locals 1

    .line 149
    sget-object v0, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->$VALUES:[Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    return-object v0
.end method
