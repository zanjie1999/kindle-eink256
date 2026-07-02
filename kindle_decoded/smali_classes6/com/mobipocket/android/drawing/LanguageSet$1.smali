.class final Lcom/mobipocket/android/drawing/LanguageSet$1;
.super Ljava/util/HashSet;
.source "LanguageSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/android/drawing/LanguageSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "zh"

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
