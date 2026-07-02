.class public final enum Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;
.super Ljava/lang/Enum;
.source "AmazonWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/AmazonWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

.field public static final enum LARGER:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

.field public static final enum LARGEST:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

.field public static final enum NORMAL:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

.field public static final enum SMALLER:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

.field public static final enum SMALLEST:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    const/4 v1, 0x0

    const-string v2, "LARGER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->LARGER:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    new-instance v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    const/4 v2, 0x1

    const-string v3, "LARGEST"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->LARGEST:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    new-instance v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    const/4 v3, 0x2

    const-string v4, "NORMAL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->NORMAL:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    new-instance v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    const/4 v4, 0x3

    const-string v5, "SMALLER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->SMALLER:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    new-instance v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    const/4 v5, 0x4

    const-string v6, "SMALLEST"

    invoke-direct {v0, v6, v5}, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->SMALLEST:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    sget-object v7, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->LARGER:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->LARGEST:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->NORMAL:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->SMALLER:Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->$VALUES:[Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->$VALUES:[Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    invoke-virtual {v0}, [Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    return-object v0
.end method
