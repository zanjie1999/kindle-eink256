.class public final enum Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;
.super Ljava/lang/Enum;
.source "PeriodicalsDebugSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

.field public static final enum Show_Content:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    const/4 v1, 0x0

    const-string v2, "Show_Content"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;->Show_Content:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    aput-object v0, v2, v1

    .line 63
    sput-object v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;->$VALUES:[Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;
    .locals 1

    .line 63
    const-class v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;->$VALUES:[Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    invoke-virtual {v0}, [Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    return-object v0
.end method
