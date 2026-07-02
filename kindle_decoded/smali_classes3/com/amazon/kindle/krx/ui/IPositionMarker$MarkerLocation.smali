.class public final enum Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;
.super Ljava/lang/Enum;
.source "IPositionMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/IPositionMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MarkerLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

.field public static final enum BEV_THUMBNAIL:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

.field public static final enum BREADCRUMB:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

.field public static final enum PFV_THUMBNAIL:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    const/4 v1, 0x0

    const-string v2, "BREADCRUMB"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->BREADCRUMB:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    .line 31
    new-instance v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    const/4 v2, 0x1

    const-string v3, "PFV_THUMBNAIL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->PFV_THUMBNAIL:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    .line 36
    new-instance v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    const/4 v3, 0x2

    const-string v4, "BEV_THUMBNAIL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->BEV_THUMBNAIL:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    .line 22
    sget-object v5, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->BREADCRUMB:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->PFV_THUMBNAIL:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->$VALUES:[Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->$VALUES:[Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    return-object v0
.end method
