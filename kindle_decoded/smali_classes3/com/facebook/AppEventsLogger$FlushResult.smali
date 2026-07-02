.class final enum Lcom/facebook/AppEventsLogger$FlushResult;
.super Ljava/lang/Enum;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FlushResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/AppEventsLogger$FlushResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AppEventsLogger$FlushResult;

.field public static final enum NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

.field public static final enum SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

.field public static final enum SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

.field public static final enum UNKNOWN_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 592
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushResult;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/facebook/AppEventsLogger$FlushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    .line 593
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushResult;

    const/4 v2, 0x1

    const-string v3, "SERVER_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/facebook/AppEventsLogger$FlushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    .line 594
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushResult;

    const/4 v3, 0x2

    const-string v4, "NO_CONNECTIVITY"

    invoke-direct {v0, v4, v3}, Lcom/facebook/AppEventsLogger$FlushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    .line 595
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushResult;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/facebook/AppEventsLogger$FlushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->UNKNOWN_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/facebook/AppEventsLogger$FlushResult;

    .line 590
    sget-object v6, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    aput-object v6, v5, v1

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    aput-object v1, v5, v2

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/facebook/AppEventsLogger$FlushResult;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AppEventsLogger$FlushResult;
    .locals 1

    .line 590
    const-class v0, Lcom/facebook/AppEventsLogger$FlushResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/AppEventsLogger$FlushResult;

    return-object p0
.end method

.method public static values()[Lcom/facebook/AppEventsLogger$FlushResult;
    .locals 1

    .line 590
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushResult;

    invoke-virtual {v0}, [Lcom/facebook/AppEventsLogger$FlushResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/AppEventsLogger$FlushResult;

    return-object v0
.end method
