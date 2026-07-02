.class final Lcom/mobipocket/android/drawing/FontFamily$1;
.super Ljava/util/HashMap;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/android/drawing/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/mobipocket/android/drawing/FontFamily;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 109
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICA:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v1, "HELVETICA_BUNDLED"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->CAECILIA:Lcom/mobipocket/android/drawing/FontFamily;

    const-string v1, "CAECILIA_BUNDLED"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
