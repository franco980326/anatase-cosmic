FROM i.anatase.org/anatase:stable

RUN dnf copr enable -y ryanabx/cosmic-epoch && \
    dnf install -y \
        cosmic-desktop \
        cosmic-session \
        cosmic-files \
        cosmic-term \
        cosmic-store \
        cosmic-settings \
        # Additional apps that fit well
        alacritty \
        neovim \
        btop \
        fastfetch \
        fuzzel

# Cleanup (leave this here)
RUN rm -rf /var && \
    mkdir -p /var/tmp
#Usando receta oficial
