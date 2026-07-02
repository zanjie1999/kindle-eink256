.class final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$6;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$RPattern;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$RPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$6;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$6;->val$content:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule;->access$200(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
