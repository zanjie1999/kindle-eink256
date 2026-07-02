.class public final enum Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;
.super Ljava/lang/Enum;
.source "KindleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/KindleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationsUriActionEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

.field public static final enum ACTION_DIALOG_LAUNCH:Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;


# instance fields
.field private final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 202
    new-instance v0, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    const/4 v1, 0x0

    const-string v2, "ACTION_DIALOG_LAUNCH"

    const-string v3, "launchdialog"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->ACTION_DIALOG_LAUNCH:Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    aput-object v0, v2, v1

    .line 198
    sput-object v2, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->$VALUES:[Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

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

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput-object p3, p0, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->identifier:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;
    .locals 1

    .line 198
    const-class v0, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;
    .locals 1

    .line 198
    sget-object v0, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->$VALUES:[Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->identifier:Ljava/lang/String;

    return-object v0
.end method
