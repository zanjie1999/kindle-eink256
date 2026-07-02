.class public final enum Lcom/audible/android/kcp/util/BroadcastReceiverExtra;
.super Ljava/lang/Enum;
.source "BroadcastReceiverExtra.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/util/BroadcastReceiverExtra;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

.field public static final enum AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

.field public static final enum EBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

.field public static final enum EBOOK_ID:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

.field private static final EXTRA_PREFIX:Ljava/lang/String; = "EXTRA"

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field public static final enum READER_MODE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

.field public static final enum SOURCE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;


# instance fields
.field private final mExtra:Ljava/lang/String;

.field private mExtraString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    const/4 v1, 0x0

    const-string v2, "AUDIOBOOK_ASIN"

    invoke-direct {v0, v2, v1, v2}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    new-instance v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    const/4 v2, 0x1

    const-string v3, "EBOOK_ID"

    invoke-direct {v0, v3, v2, v3}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->EBOOK_ID:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    new-instance v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    const/4 v3, 0x2

    const-string v4, "EBOOK_ASIN"

    invoke-direct {v0, v4, v3, v4}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->EBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    new-instance v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    const/4 v4, 0x3

    const-string v5, "SOURCE"

    invoke-direct {v0, v5, v4, v5}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->SOURCE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    new-instance v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    const/4 v5, 0x4

    const-string v6, "READER_MODE"

    invoke-direct {v0, v6, v5, v6}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->READER_MODE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    .line 11
    sget-object v7, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->EBOOK_ID:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->EBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->SOURCE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->$VALUES:[Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    .line 14
    const-class v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->PACKAGE_NAME:Ljava/lang/String;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->mExtra:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/util/BroadcastReceiverExtra;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/util/BroadcastReceiverExtra;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->$VALUES:[Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->mExtraString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 40
    sget-object v2, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->PACKAGE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EXTRA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->mExtra:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s.%s_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->mExtraString:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->mExtraString:Ljava/lang/String;

    return-object v0
.end method
