.class public final enum Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;
.super Ljava/lang/Enum;
.source "ImageScaling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/content/images/ImageScaling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalingPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

.field public static final enum Fit:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

.field public static final enum ShrinkToFit:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    const/4 v1, 0x0

    const-string v2, "ShrinkToFit"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;->ShrinkToFit:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    new-instance v0, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    const/4 v2, 0x1

    const-string v3, "Fit"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;->Fit:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    .line 11
    sget-object v4, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;->ShrinkToFit:Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;->$VALUES:[Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;->$VALUES:[Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/content/images/ImageScaling$ScalingPolicy;

    return-object v0
.end method
