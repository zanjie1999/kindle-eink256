.class public final enum Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;
.super Ljava/lang/Enum;
.source "AmazonConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/AmazonConsoleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

.field public static final enum DEBUG:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

.field public static final enum ERROR:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

.field public static final enum LOG:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

.field public static final enum TIP:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

.field public static final enum WARNING:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->ERROR:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    .line 13
    new-instance v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    const/4 v2, 0x1

    const-string v3, "DEBUG"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->DEBUG:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    .line 14
    new-instance v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    const/4 v3, 0x2

    const-string v4, "LOG"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->LOG:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    .line 15
    new-instance v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    const/4 v4, 0x3

    const-string v5, "TIP"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->TIP:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    .line 16
    new-instance v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    const/4 v5, 0x4

    const-string v6, "WARNING"

    invoke-direct {v0, v6, v5}, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->WARNING:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    .line 11
    sget-object v7, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->ERROR:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->DEBUG:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->LOG:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->TIP:Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->$VALUES:[Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->$VALUES:[Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    invoke-virtual {v0}, [Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/webkit/AmazonConsoleMessage$MessageLevel;

    return-object v0
.end method
