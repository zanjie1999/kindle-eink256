.class public final enum Lcom/amazon/kindle/krx/application/SyncType;
.super Ljava/lang/Enum;
.source "SyncType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/application/SyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/application/SyncType;

.field public static final enum JOURNAL_UPLOAD:Lcom/amazon/kindle/krx/application/SyncType;

.field public static final enum META_DATA:Lcom/amazon/kindle/krx/application/SyncType;

.field public static final enum TODO:Lcom/amazon/kindle/krx/application/SyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/application/SyncType;

    const/4 v1, 0x0

    const-string v2, "TODO"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/application/SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/SyncType;->TODO:Lcom/amazon/kindle/krx/application/SyncType;

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/application/SyncType;

    const/4 v2, 0x1

    const-string v3, "META_DATA"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/application/SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/SyncType;->META_DATA:Lcom/amazon/kindle/krx/application/SyncType;

    .line 25
    new-instance v0, Lcom/amazon/kindle/krx/application/SyncType;

    const/4 v3, 0x2

    const-string v4, "JOURNAL_UPLOAD"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/application/SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/SyncType;->JOURNAL_UPLOAD:Lcom/amazon/kindle/krx/application/SyncType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/application/SyncType;

    .line 12
    sget-object v5, Lcom/amazon/kindle/krx/application/SyncType;->TODO:Lcom/amazon/kindle/krx/application/SyncType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/application/SyncType;->META_DATA:Lcom/amazon/kindle/krx/application/SyncType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/application/SyncType;->$VALUES:[Lcom/amazon/kindle/krx/application/SyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/application/SyncType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kindle/krx/application/SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/application/SyncType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/application/SyncType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/krx/application/SyncType;->$VALUES:[Lcom/amazon/kindle/krx/application/SyncType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/application/SyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/application/SyncType;

    return-object v0
.end method
