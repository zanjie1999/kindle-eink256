.class public final Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;
.super Ljava/lang/Object;
.source "SharedPreferenceKey.java"


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key can\'t be null."

    .line 25
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;->key:Ljava/lang/String;

    return-object v0
.end method
