.class public final Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;
.super Ljava/lang/Object;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$JoinException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendOneEntry(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/lang/String;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->appendOneToken(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 288
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 289
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->appendOneToken(Ljava/lang/Appendable;Ljava/lang/Object;)V

    return-void
.end method

.method private static appendOneToken(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)TT;"
        }
    .end annotation

    .line 162
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 205
    invoke-static {p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)TT;"
        }
    .end annotation

    .line 266
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 270
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :try_start_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->appendOneEntry(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Map$Entry;)V

    .line 273
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 275
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->appendOneEntry(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Map$Entry;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 278
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$JoinException;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$JoinException;-><init>(Ljava/io/IOException;Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$1;)V

    throw p1

    :cond_0
    return-object p0
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "*>;)TT;"
        }
    .end annotation

    .line 230
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->appendOneToken(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 235
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 237
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->appendOneToken(Ljava/lang/Appendable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 240
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$JoinException;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$JoinException;-><init>(Ljava/io/IOException;Lcom/amazon/whispersync/com/google/inject/internal/util/$Join$1;)V

    throw p1

    :cond_0
    return-object p0
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 183
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->join(Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs join(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    .line 95
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-static {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/Appendable;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Join;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 298
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
