.class public final enum Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "AmazonWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/AmazonWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomDensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

.field public static final enum CLOSE:Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

.field public static final enum FAR:Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

.field public static final enum MEDIUM:Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    const/4 v1, 0x0

    const-string v2, "CLOSE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;->CLOSE:Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    new-instance v0, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;->MEDIUM:Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    new-instance v0, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    const/4 v3, 0x2

    const-string v4, "FAR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;->FAR:Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    sget-object v5, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;->CLOSE:Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;->MEDIUM:Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;->$VALUES:[Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;->$VALUES:[Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    invoke-virtual {v0}, [Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    return-object v0
.end method
