.class public final enum Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;
.super Ljava/lang/Enum;
.source "LibraryContentAddPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/LibraryContentAddPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

.field public static final enum FULL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

.field public static final enum PARTIAL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

.field public static final enum RESTRICT_CAROUSEL:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

.field public static final enum UNSPECIFIED:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    const/4 v1, 0x0

    const-string v2, "PARTIAL_FTUE_SYNC"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->PARTIAL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    .line 25
    new-instance v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    const/4 v2, 0x1

    const-string v3, "FULL_FTUE_SYNC"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->FULL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    .line 31
    new-instance v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    const/4 v3, 0x2

    const-string v4, "RESTRICT_CAROUSEL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->RESTRICT_CAROUSEL:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    .line 36
    new-instance v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    const/4 v4, 0x3

    const-string v5, "UNSPECIFIED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->UNSPECIFIED:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    .line 16
    sget-object v6, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->PARTIAL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->FULL_FTUE_SYNC:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->RESTRICT_CAROUSEL:Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->$VALUES:[Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->$VALUES:[Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    invoke-virtual {v0}, [Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/content/LibraryContentAddPayload$Source;

    return-object v0
.end method
