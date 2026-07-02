.class public final enum Lcom/facebook/AppEventsLogger$FlushBehavior;
.super Ljava/lang/Enum;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlushBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/AppEventsLogger$FlushBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AppEventsLogger$FlushBehavior;

.field public static final enum AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

.field public static final enum EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 125
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushBehavior;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1}, Lcom/facebook/AppEventsLogger$FlushBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

    .line 130
    new-instance v0, Lcom/facebook/AppEventsLogger$FlushBehavior;

    const/4 v2, 0x1

    const-string v3, "EXPLICIT_ONLY"

    invoke-direct {v0, v3, v2}, Lcom/facebook/AppEventsLogger$FlushBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/AppEventsLogger$FlushBehavior;

    .line 120
    sget-object v4, Lcom/facebook/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/facebook/AppEventsLogger$FlushBehavior;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AppEventsLogger$FlushBehavior;
    .locals 1

    .line 120
    const-class v0, Lcom/facebook/AppEventsLogger$FlushBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/AppEventsLogger$FlushBehavior;

    return-object p0
.end method

.method public static values()[Lcom/facebook/AppEventsLogger$FlushBehavior;
    .locals 1

    .line 120
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->$VALUES:[Lcom/facebook/AppEventsLogger$FlushBehavior;

    invoke-virtual {v0}, [Lcom/facebook/AppEventsLogger$FlushBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/AppEventsLogger$FlushBehavior;

    return-object v0
.end method
