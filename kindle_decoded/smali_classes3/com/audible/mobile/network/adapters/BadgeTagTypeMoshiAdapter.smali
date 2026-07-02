.class public final Lcom/audible/mobile/network/adapters/BadgeTagTypeMoshiAdapter;
.super Ljava/lang/Object;
.source "BadgeTagTypeMoshiAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/BadgeTagType;
    .locals 0

    .line 13
    invoke-static {p1}, Lcom/audible/mobile/network/apis/domain/BadgeTagType;->fromString(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/BadgeTagType;

    move-result-object p1

    return-object p1
.end method
