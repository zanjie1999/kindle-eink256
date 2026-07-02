.class public final enum Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;
.super Ljava/lang/Enum;
.source "InfoCardPronunciationButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

.field public static final enum HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

.field public static final enum PROGRESS_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

.field public static final enum SPEAK_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

.field public static final enum STOP_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    const/4 v1, 0x0

    const-string v2, "HIDE_ICON"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    .line 45
    new-instance v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    const/4 v2, 0x1

    const-string v3, "SPEAK_ICON"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->SPEAK_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    .line 47
    new-instance v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    const/4 v3, 0x2

    const-string v4, "STOP_ICON"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->STOP_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    .line 49
    new-instance v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    const/4 v4, 0x3

    const-string v5, "PROGRESS_ICON"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->PROGRESS_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    .line 41
    sget-object v6, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->SPEAK_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->STOP_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->$VALUES:[Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->$VALUES:[Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    return-object v0
.end method
