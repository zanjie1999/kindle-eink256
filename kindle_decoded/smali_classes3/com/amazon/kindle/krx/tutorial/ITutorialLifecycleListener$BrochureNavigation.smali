.class public final enum Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;
.super Ljava/lang/Enum;
.source "ITutorialLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrochureNavigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

.field public static final enum PAGE_NEXT_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

.field public static final enum PAGE_NEXT_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

.field public static final enum PAGE_PREV_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

.field public static final enum PAGE_PREV_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 58
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    const/4 v1, 0x0

    const-string v2, "PAGE_NEXT_SWIPE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_NEXT_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    .line 59
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    const/4 v2, 0x1

    const-string v3, "PAGE_NEXT_BUTTON"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_NEXT_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    .line 60
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    const/4 v3, 0x2

    const-string v4, "PAGE_PREV_SWIPE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_PREV_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    .line 61
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    const/4 v4, 0x3

    const-string v5, "PAGE_PREV_BUTTON"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_PREV_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    .line 56
    sget-object v6, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_NEXT_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_NEXT_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->PAGE_PREV_SWIPE:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;

    return-object v0
.end method
