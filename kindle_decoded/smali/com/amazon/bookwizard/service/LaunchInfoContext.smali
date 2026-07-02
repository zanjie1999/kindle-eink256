.class public final enum Lcom/amazon/bookwizard/service/LaunchInfoContext;
.super Ljava/lang/Enum;
.source "LaunchInfoContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/bookwizard/service/LaunchInfoContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/bookwizard/service/LaunchInfoContext;

.field public static final enum FTUE:Lcom/amazon/bookwizard/service/LaunchInfoContext;

.field public static final enum NOTIFICATION:Lcom/amazon/bookwizard/service/LaunchInfoContext;

.field public static final enum REENTRY:Lcom/amazon/bookwizard/service/LaunchInfoContext;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/amazon/bookwizard/service/LaunchInfoContext;

    const/4 v1, 0x0

    const-string v2, "FTUE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/bookwizard/service/LaunchInfoContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/LaunchInfoContext;->FTUE:Lcom/amazon/bookwizard/service/LaunchInfoContext;

    .line 15
    new-instance v0, Lcom/amazon/bookwizard/service/LaunchInfoContext;

    const/4 v2, 0x1

    const-string v3, "NOTIFICATION"

    invoke-direct {v0, v3, v2}, Lcom/amazon/bookwizard/service/LaunchInfoContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/LaunchInfoContext;->NOTIFICATION:Lcom/amazon/bookwizard/service/LaunchInfoContext;

    .line 16
    new-instance v0, Lcom/amazon/bookwizard/service/LaunchInfoContext;

    const/4 v3, 0x2

    const-string v4, "REENTRY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/bookwizard/service/LaunchInfoContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/service/LaunchInfoContext;->REENTRY:Lcom/amazon/bookwizard/service/LaunchInfoContext;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/bookwizard/service/LaunchInfoContext;

    .line 13
    sget-object v5, Lcom/amazon/bookwizard/service/LaunchInfoContext;->FTUE:Lcom/amazon/bookwizard/service/LaunchInfoContext;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/bookwizard/service/LaunchInfoContext;->NOTIFICATION:Lcom/amazon/bookwizard/service/LaunchInfoContext;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/bookwizard/service/LaunchInfoContext;->$VALUES:[Lcom/amazon/bookwizard/service/LaunchInfoContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/bookwizard/service/LaunchInfoContext;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/bookwizard/service/LaunchInfoContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/bookwizard/service/LaunchInfoContext;

    return-object p0
.end method

.method public static values()[Lcom/amazon/bookwizard/service/LaunchInfoContext;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/bookwizard/service/LaunchInfoContext;->$VALUES:[Lcom/amazon/bookwizard/service/LaunchInfoContext;

    invoke-virtual {v0}, [Lcom/amazon/bookwizard/service/LaunchInfoContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/bookwizard/service/LaunchInfoContext;

    return-object v0
.end method
