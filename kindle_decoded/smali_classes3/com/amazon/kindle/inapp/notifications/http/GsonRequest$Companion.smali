.class public final Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;
.super Ljava/lang/Object;
.source "GsonRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_GSON$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Lcom/google/gson/Gson;
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->getDEFAULT_GSON()Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;)Ljava/lang/String;
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest$Companion;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getDEFAULT_GSON()Lcom/google/gson/Gson;
    .locals 1

    .line 180
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->access$getDEFAULT_GSON$cp()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 179
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final getBODY_CONTENT_TYPE()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/http/GsonRequest;->access$getBODY_CONTENT_TYPE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
