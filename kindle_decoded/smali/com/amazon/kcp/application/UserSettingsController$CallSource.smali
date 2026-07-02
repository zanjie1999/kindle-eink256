.class public final enum Lcom/amazon/kcp/application/UserSettingsController$CallSource;
.super Ljava/lang/Enum;
.source "UserSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/UserSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/UserSettingsController$CallSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/UserSettingsController$CallSource;

.field public static final enum ACCESSIBILITY:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

.field public static final enum FAB:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

.field public static final enum VIEW_OPTIONS:Lcom/amazon/kcp/application/UserSettingsController$CallSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 256
    new-instance v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    const/4 v1, 0x0

    const-string v2, "VIEW_OPTIONS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/application/UserSettingsController$CallSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->VIEW_OPTIONS:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    new-instance v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    const/4 v2, 0x1

    const-string v3, "FAB"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/application/UserSettingsController$CallSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->FAB:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    new-instance v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    const/4 v3, 0x2

    const-string v4, "ACCESSIBILITY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/application/UserSettingsController$CallSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->ACCESSIBILITY:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    .line 255
    sget-object v5, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->VIEW_OPTIONS:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->FAB:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->$VALUES:[Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/UserSettingsController$CallSource;
    .locals 1

    .line 255
    const-class v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/UserSettingsController$CallSource;
    .locals 1

    .line 255
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->$VALUES:[Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/UserSettingsController$CallSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    return-object v0
.end method
