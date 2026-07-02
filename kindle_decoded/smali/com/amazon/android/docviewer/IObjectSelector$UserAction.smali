.class public final enum Lcom/amazon/android/docviewer/IObjectSelector$UserAction;
.super Ljava/lang/Enum;
.source "IObjectSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/IObjectSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/IObjectSelector$UserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

.field public static final enum DEFAULT:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

.field public static final enum DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

.field public static final enum SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

.field public static final enum TAP_AND_HOLD:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    const/4 v1, 0x0

    const-string v2, "SINGLE_TAP"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    .line 19
    new-instance v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    const/4 v2, 0x1

    const-string v3, "DOUBLE_TAP"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    .line 20
    new-instance v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    const/4 v3, 0x2

    const-string v4, "TAP_AND_HOLD"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->TAP_AND_HOLD:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    .line 21
    new-instance v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    const/4 v4, 0x3

    const-string v5, "DEFAULT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DEFAULT:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    .line 17
    sget-object v6, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->TAP_AND_HOLD:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->$VALUES:[Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/IObjectSelector$UserAction;
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/IObjectSelector$UserAction;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->$VALUES:[Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    return-object v0
.end method
