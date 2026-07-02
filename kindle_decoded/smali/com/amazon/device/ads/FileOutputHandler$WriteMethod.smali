.class public final enum Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;
.super Ljava/lang/Enum;
.source "FileOutputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/FileOutputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WriteMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

.field public static final enum APPEND:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

.field public static final enum OVERWRITE:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 215
    new-instance v0, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    const/4 v1, 0x0

    const-string v2, "APPEND"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->APPEND:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    .line 216
    new-instance v0, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    const/4 v2, 0x1

    const-string v3, "OVERWRITE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->OVERWRITE:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    .line 213
    sget-object v4, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->APPEND:Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->$VALUES:[Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;
    .locals 1

    .line 213
    const-class v0, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;
    .locals 1

    .line 213
    sget-object v0, Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->$VALUES:[Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/FileOutputHandler$WriteMethod;

    return-object v0
.end method
