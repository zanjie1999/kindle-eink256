.class final enum Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;
.super Ljava/lang/Enum;
.source "ContentDecorationPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/ContentDecorationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ContentDecorationPayloadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

.field public static final enum BaseContentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

.field public static final enum NoteCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

.field public static final enum PopularHighlightCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

.field public static final enum WordWiseCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    const/4 v1, 0x0

    const-string v2, "BaseContentDecorationPayload"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->BaseContentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    .line 11
    new-instance v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    const/4 v2, 0x1

    const-string v3, "NoteCotentDecorationPayload"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->NoteCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    .line 12
    new-instance v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    const/4 v3, 0x2

    const-string v4, "PopularHighlightCotentDecorationPayload"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->PopularHighlightCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    .line 13
    new-instance v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    const/4 v4, 0x3

    const-string v5, "WordWiseCotentDecorationPayload"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->WordWiseCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    .line 9
    sget-object v6, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->BaseContentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->NoteCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->PopularHighlightCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->$VALUES:[Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->$VALUES:[Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    return-object v0
.end method
