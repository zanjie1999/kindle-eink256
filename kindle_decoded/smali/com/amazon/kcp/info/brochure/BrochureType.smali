.class public final enum Lcom/amazon/kcp/info/brochure/BrochureType;
.super Ljava/lang/Enum;
.source "BrochureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/info/brochure/BrochureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/info/brochure/BrochureType;

.field public static final enum ShareableBrochure:Lcom/amazon/kcp/info/brochure/BrochureType;

.field public static final enum SimpleTextImage:Lcom/amazon/kcp/info/brochure/BrochureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureType;

    const/4 v1, 0x0

    const-string v2, "SimpleTextImage"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/info/brochure/BrochureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureType;->SimpleTextImage:Lcom/amazon/kcp/info/brochure/BrochureType;

    .line 18
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureType;

    const/4 v2, 0x1

    const-string v3, "ShareableBrochure"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/info/brochure/BrochureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureType;->ShareableBrochure:Lcom/amazon/kcp/info/brochure/BrochureType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/info/brochure/BrochureType;

    .line 16
    sget-object v4, Lcom/amazon/kcp/info/brochure/BrochureType;->SimpleTextImage:Lcom/amazon/kcp/info/brochure/BrochureType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/info/brochure/BrochureType;->$VALUES:[Lcom/amazon/kcp/info/brochure/BrochureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/BrochureType;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/info/brochure/BrochureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/info/brochure/BrochureType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/info/brochure/BrochureType;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureType;->$VALUES:[Lcom/amazon/kcp/info/brochure/BrochureType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/info/brochure/BrochureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/info/brochure/BrochureType;

    return-object v0
.end method
