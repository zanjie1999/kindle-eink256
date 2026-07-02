.class public final enum Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;
.super Ljava/lang/Enum;
.source "ReadData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/ReadData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadStateOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

.field public static final enum AUTOMATIC:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

.field public static final enum BACKFILL:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

.field public static final enum MANUAL:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

.field public static final enum OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    const/4 v1, 0x0

    const-string v2, "AUTOMATIC"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->AUTOMATIC:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    .line 28
    new-instance v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    const/4 v2, 0x1

    const-string v3, "BACKFILL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->BACKFILL:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    .line 29
    new-instance v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    const/4 v3, 0x2

    const-string v4, "MANUAL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->MANUAL:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    .line 30
    new-instance v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    const/4 v4, 0x3

    const-string v5, "OTHER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    .line 26
    sget-object v6, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->AUTOMATIC:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->BACKFILL:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->MANUAL:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->$VALUES:[Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->$VALUES:[Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    invoke-virtual {v0}, [Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    return-object v0
.end method
