.class final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$10;
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
.field pattern:Ljava/util/regex/Pattern;

.field final synthetic val$regex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$10;->val$regex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iget-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$10;->val$regex:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$10;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Rule$10;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 510
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method
