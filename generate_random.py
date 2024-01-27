# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    generate_random.py                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cdeville <cdeville@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/17 16:37:11 by cdeville          #+#    #+#              #
#    Updated: 2024/01/18 12:28:19 by cdeville         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/env python3

import	random
import	sys

size = int(sys.argv[1])
nombres_positifs = random.sample(range(0, size + 1), size)
nombres_formatés = ' '.join(map(str, nombres_positifs))
print(nombres_formatés, end='')
