.class public final enum Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;
.super Ljava/lang/Enum;
.source "MobileWeblabOS.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

.field public static final enum ANDROID:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

.field public static final enum FIRE_OS:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    const/4 v1, 0x0

    const-string v2, "ANDROID"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->ANDROID:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    const/4 v2, 0x1

    const-string v3, "FIRE_OS"

    const-string v4, "FIRE-OS"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->FIRE_OS:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    .line 6
    sget-object v4, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->ANDROID:Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->$VALUES:[Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    return-object p0
.end method

.method public static values()[Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->$VALUES:[Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    invoke-virtual {v0}, [Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->value:Ljava/lang/String;

    return-object v0
.end method
